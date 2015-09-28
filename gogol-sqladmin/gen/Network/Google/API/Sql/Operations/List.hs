{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Operations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all instance operations that have been performed on the given
-- Cloud SQL instance in the reverse chronological order of the start time.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.operations.list@.
module Network.Google.API.Sql.Operations.List
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
    , olPageToken
    , olOauthToken
    , olMaxResults
    , olFields
    , olAlt
    , olInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.operations.list which the
-- 'OperationsList'' request conforms to.
type OperationsListAPI =
     "projects" :>
       Capture "project" Text :>
         "operations" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             QueryParam "instance" Text :>
                               Get '[JSON] OperationsListResponse

-- | Lists all instance operations that have been performed on the given
-- Cloud SQL instance in the reverse chronological order of the start time.
--
-- /See:/ 'operationsList'' smart constructor.
data OperationsList' = OperationsList'
    { _olQuotaUser   :: !(Maybe Text)
    , _olPrettyPrint :: !Bool
    , _olProject     :: !Text
    , _olUserIp      :: !(Maybe Text)
    , _olKey         :: !(Maybe Text)
    , _olPageToken   :: !(Maybe Text)
    , _olOauthToken  :: !(Maybe Text)
    , _olMaxResults  :: !(Maybe Word32)
    , _olFields      :: !(Maybe Text)
    , _olAlt         :: !Alt
    , _olInstance    :: !Text
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
-- * 'olPageToken'
--
-- * 'olOauthToken'
--
-- * 'olMaxResults'
--
-- * 'olFields'
--
-- * 'olAlt'
--
-- * 'olInstance'
operationsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> OperationsList'
operationsList' pOlProject_ pOlInstance_ =
    OperationsList'
    { _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olProject = pOlProject_
    , _olUserIp = Nothing
    , _olKey = Nothing
    , _olPageToken = Nothing
    , _olOauthToken = Nothing
    , _olMaxResults = Nothing
    , _olFields = Nothing
    , _olAlt = JSON
    , _olInstance = pOlInstance_
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

-- | Project ID of the project that contains the instance.
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

-- | A previously-returned page token representing part of the larger set of
-- results to view.
olPageToken :: Lens' OperationsList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | OAuth 2.0 token for the current user.
olOauthToken :: Lens' OperationsList' (Maybe Text)
olOauthToken
  = lens _olOauthToken (\ s a -> s{_olOauthToken = a})

-- | Maximum number of operations per response.
olMaxResults :: Lens' OperationsList' (Maybe Word32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OperationsList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

-- | Data format for the response.
olAlt :: Lens' OperationsList' Alt
olAlt = lens _olAlt (\ s a -> s{_olAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
olInstance :: Lens' OperationsList' Text
olInstance
  = lens _olInstance (\ s a -> s{_olInstance = a})

instance GoogleRequest OperationsList' where
        type Rs OperationsList' = OperationsListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u OperationsList'{..}
          = go _olQuotaUser (Just _olPrettyPrint) _olProject
              _olUserIp
              _olKey
              _olPageToken
              _olOauthToken
              _olMaxResults
              _olFields
              (Just _olAlt)
              (Just _olInstance)
          where go
                  = clientWithRoute (Proxy :: Proxy OperationsListAPI)
                      r
                      u
