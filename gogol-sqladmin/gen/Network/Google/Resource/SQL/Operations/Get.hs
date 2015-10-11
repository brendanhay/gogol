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
-- Module      : Network.Google.Resource.SQL.Operations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves an instance operation that has been performed on an instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLOperationsGet@.
module Network.Google.Resource.SQL.Operations.Get
    (
    -- * REST Resource
      OperationsGetResource

    -- * Creating a Request
    , operationsGet'
    , OperationsGet'

    -- * Request Lenses
    , ogQuotaUser
    , ogPrettyPrint
    , ogProject
    , ogOperation
    , ogUserIP
    , ogKey
    , ogOAuthToken
    , ogFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLOperationsGet@ method which the
-- 'OperationsGet'' request conforms to.
type OperationsGetResource =
     "projects" :>
       Capture "project" Text :>
         "operations" :>
           Capture "operation" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves an instance operation that has been performed on an instance.
--
-- /See:/ 'operationsGet'' smart constructor.
data OperationsGet' = OperationsGet'
    { _ogQuotaUser   :: !(Maybe Text)
    , _ogPrettyPrint :: !Bool
    , _ogProject     :: !Text
    , _ogOperation   :: !Text
    , _ogUserIP      :: !(Maybe Text)
    , _ogKey         :: !(Maybe AuthKey)
    , _ogOAuthToken  :: !(Maybe OAuthToken)
    , _ogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogPrettyPrint'
--
-- * 'ogProject'
--
-- * 'ogOperation'
--
-- * 'ogUserIP'
--
-- * 'ogKey'
--
-- * 'ogOAuthToken'
--
-- * 'ogFields'
operationsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> OperationsGet'
operationsGet' pOgProject_ pOgOperation_ =
    OperationsGet'
    { _ogQuotaUser = Nothing
    , _ogPrettyPrint = True
    , _ogProject = pOgProject_
    , _ogOperation = pOgOperation_
    , _ogUserIP = Nothing
    , _ogKey = Nothing
    , _ogOAuthToken = Nothing
    , _ogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogQuotaUser :: Lens' OperationsGet' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OperationsGet' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | Project ID of the project that contains the instance.
ogProject :: Lens' OperationsGet' Text
ogProject
  = lens _ogProject (\ s a -> s{_ogProject = a})

-- | Instance operation ID.
ogOperation :: Lens' OperationsGet' Text
ogOperation
  = lens _ogOperation (\ s a -> s{_ogOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogUserIP :: Lens' OperationsGet' (Maybe Text)
ogUserIP = lens _ogUserIP (\ s a -> s{_ogUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OperationsGet' (Maybe AuthKey)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | OAuth 2.0 token for the current user.
ogOAuthToken :: Lens' OperationsGet' (Maybe OAuthToken)
ogOAuthToken
  = lens _ogOAuthToken (\ s a -> s{_ogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OperationsGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

instance GoogleAuth OperationsGet' where
        _AuthKey = ogKey . _Just
        _AuthToken = ogOAuthToken . _Just

instance GoogleRequest OperationsGet' where
        type Rs OperationsGet' = Operation
        request = requestWith sQLAdminRequest
        requestWith rq OperationsGet'{..}
          = go _ogProject _ogOperation _ogQuotaUser
              (Just _ogPrettyPrint)
              _ogUserIP
              _ogFields
              _ogKey
              _ogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy OperationsGetResource)
                      rq
