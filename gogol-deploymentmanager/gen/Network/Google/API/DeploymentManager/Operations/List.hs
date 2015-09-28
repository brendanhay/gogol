{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DeploymentManager.Operations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all operations for a project.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.operations.list@.
module Network.Google.API.DeploymentManager.Operations.List
    (
    -- * REST Resource
      OperationsListAPI

    -- * Creating a Request
    , operationsList'
    , OperationsList'

    -- * Request Lenses
    , olQuotaUser
    , olPrettyPrint
    , olProject
    , olUserIp
    , olKey
    , olFilter
    , olPageToken
    , olOauthToken
    , olMaxResults
    , olFields
    , olAlt
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for deploymentmanager.operations.list which the
-- 'OperationsList'' request conforms to.
type OperationsListAPI =
     Capture "project" Text :>
       "global" :>
         "operations" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] OperationsListResponse

-- | Lists all operations for a project.
--
-- /See:/ 'operationsList'' smart constructor.
data OperationsList' = OperationsList'
    { _olQuotaUser   :: !(Maybe Text)
    , _olPrettyPrint :: !Bool
    , _olProject     :: !Text
    , _olUserIp      :: !(Maybe Text)
    , _olKey         :: !(Maybe Text)
    , _olFilter      :: !(Maybe Text)
    , _olPageToken   :: !(Maybe Text)
    , _olOauthToken  :: !(Maybe Text)
    , _olMaxResults  :: !Word32
    , _olFields      :: !(Maybe Text)
    , _olAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olProject'
--
-- * 'olUserIp'
--
-- * 'olKey'
--
-- * 'olFilter'
--
-- * 'olPageToken'
--
-- * 'olOauthToken'
--
-- * 'olMaxResults'
--
-- * 'olFields'
--
-- * 'olAlt'
operationsList'
    :: Text -- ^ 'project'
    -> OperationsList'
operationsList' pOlProject_ =
    OperationsList'
    { _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olProject = pOlProject_
    , _olUserIp = Nothing
    , _olKey = Nothing
    , _olFilter = Nothing
    , _olPageToken = Nothing
    , _olOauthToken = Nothing
    , _olMaxResults = 500
    , _olFields = Nothing
    , _olAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olQuotaUser :: Lens' OperationsList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' OperationsList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | The project ID for this request.
olProject :: Lens' OperationsList' Text
olProject
  = lens _olProject (\ s a -> s{_olProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olUserIp :: Lens' OperationsList' (Maybe Text)
olUserIp = lens _olUserIp (\ s a -> s{_olUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' OperationsList' (Maybe Text)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
olFilter :: Lens' OperationsList' (Maybe Text)
olFilter = lens _olFilter (\ s a -> s{_olFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
olPageToken :: Lens' OperationsList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | OAuth 2.0 token for the current user.
olOauthToken :: Lens' OperationsList' (Maybe Text)
olOauthToken
  = lens _olOauthToken (\ s a -> s{_olOauthToken = a})

-- | Maximum count of results to be returned.
olMaxResults :: Lens' OperationsList' Word32
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OperationsList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

-- | Data format for the response.
olAlt :: Lens' OperationsList' Alt
olAlt = lens _olAlt (\ s a -> s{_olAlt = a})

instance GoogleRequest OperationsList' where
        type Rs OperationsList' = OperationsListResponse
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u OperationsList'{..}
          = go _olQuotaUser (Just _olPrettyPrint) _olProject
              _olUserIp
              _olKey
              _olFilter
              _olPageToken
              _olOauthToken
              (Just _olMaxResults)
              _olFields
              (Just _olAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OperationsListAPI)
                      r
                      u
