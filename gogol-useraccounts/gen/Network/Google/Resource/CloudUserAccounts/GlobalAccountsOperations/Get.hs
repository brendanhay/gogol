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
-- Module      : Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the specified operation resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGlobalAccountsOperationsGet@.
module Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Get
    (
    -- * REST Resource
      GlobalAccountsOperationsGetResource

    -- * Creating a Request
    , globalAccountsOperationsGet'
    , GlobalAccountsOperationsGet'

    -- * Request Lenses
    , gaogQuotaUser
    , gaogPrettyPrint
    , gaogProject
    , gaogOperation
    , gaogUserIP
    , gaogKey
    , gaogOAuthToken
    , gaogFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGlobalAccountsOperationsGet@ method which the
-- 'GlobalAccountsOperationsGet'' request conforms to.
type GlobalAccountsOperationsGetResource =
     Capture "project" Text :>
       "global" :>
         "operations" :>
           Capture "operation" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves the specified operation resource.
--
-- /See:/ 'globalAccountsOperationsGet'' smart constructor.
data GlobalAccountsOperationsGet' = GlobalAccountsOperationsGet'
    { _gaogQuotaUser   :: !(Maybe Text)
    , _gaogPrettyPrint :: !Bool
    , _gaogProject     :: !Text
    , _gaogOperation   :: !Text
    , _gaogUserIP      :: !(Maybe Text)
    , _gaogKey         :: !(Maybe AuthKey)
    , _gaogOAuthToken  :: !(Maybe OAuthToken)
    , _gaogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'gaogUserIP'
--
-- * 'gaogKey'
--
-- * 'gaogOAuthToken'
--
-- * 'gaogFields'
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
    , _gaogUserIP = Nothing
    , _gaogKey = Nothing
    , _gaogOAuthToken = Nothing
    , _gaogFields = Nothing
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
gaogUserIP :: Lens' GlobalAccountsOperationsGet' (Maybe Text)
gaogUserIP
  = lens _gaogUserIP (\ s a -> s{_gaogUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gaogKey :: Lens' GlobalAccountsOperationsGet' (Maybe AuthKey)
gaogKey = lens _gaogKey (\ s a -> s{_gaogKey = a})

-- | OAuth 2.0 token for the current user.
gaogOAuthToken :: Lens' GlobalAccountsOperationsGet' (Maybe OAuthToken)
gaogOAuthToken
  = lens _gaogOAuthToken
      (\ s a -> s{_gaogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gaogFields :: Lens' GlobalAccountsOperationsGet' (Maybe Text)
gaogFields
  = lens _gaogFields (\ s a -> s{_gaogFields = a})

instance GoogleAuth GlobalAccountsOperationsGet'
         where
        _AuthKey = gaogKey . _Just
        _AuthToken = gaogOAuthToken . _Just

instance GoogleRequest GlobalAccountsOperationsGet'
         where
        type Rs GlobalAccountsOperationsGet' = Operation
        request = requestWith userAccountsRequest
        requestWith rq GlobalAccountsOperationsGet'{..}
          = go _gaogProject _gaogOperation _gaogQuotaUser
              (Just _gaogPrettyPrint)
              _gaogUserIP
              _gaogFields
              _gaogKey
              _gaogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy GlobalAccountsOperationsGetResource)
                      rq
