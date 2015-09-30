{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Operations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves an instance operation that has been performed on an instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlOperationsGet@.
module Network.Google.Resource.Sql.Operations.Get
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
    , ogUserIp
    , ogKey
    , ogOauthToken
    , ogFields
    , ogAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlOperationsGet@ which the
-- 'OperationsGet'' request conforms to.
type OperationsGetResource =
     "projects" :>
       Capture "project" Text :>
         "operations" :>
           Capture "operation" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Operation

-- | Retrieves an instance operation that has been performed on an instance.
--
-- /See:/ 'operationsGet'' smart constructor.
data OperationsGet' = OperationsGet'
    { _ogQuotaUser   :: !(Maybe Text)
    , _ogPrettyPrint :: !Bool
    , _ogProject     :: !Text
    , _ogOperation   :: !Text
    , _ogUserIp      :: !(Maybe Text)
    , _ogKey         :: !(Maybe Text)
    , _ogOauthToken  :: !(Maybe Text)
    , _ogFields      :: !(Maybe Text)
    , _ogAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ogUserIp'
--
-- * 'ogKey'
--
-- * 'ogOauthToken'
--
-- * 'ogFields'
--
-- * 'ogAlt'
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
    , _ogUserIp = Nothing
    , _ogKey = Nothing
    , _ogOauthToken = Nothing
    , _ogFields = Nothing
    , _ogAlt = JSON
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
ogUserIp :: Lens' OperationsGet' (Maybe Text)
ogUserIp = lens _ogUserIp (\ s a -> s{_ogUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OperationsGet' (Maybe Text)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | OAuth 2.0 token for the current user.
ogOauthToken :: Lens' OperationsGet' (Maybe Text)
ogOauthToken
  = lens _ogOauthToken (\ s a -> s{_ogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OperationsGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

-- | Data format for the response.
ogAlt :: Lens' OperationsGet' Alt
ogAlt = lens _ogAlt (\ s a -> s{_ogAlt = a})

instance GoogleRequest OperationsGet' where
        type Rs OperationsGet' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u OperationsGet'{..}
          = go _ogQuotaUser (Just _ogPrettyPrint) _ogProject
              _ogOperation
              _ogUserIp
              _ogKey
              _ogOauthToken
              _ogFields
              (Just _ogAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OperationsGetResource)
                      r
                      u
