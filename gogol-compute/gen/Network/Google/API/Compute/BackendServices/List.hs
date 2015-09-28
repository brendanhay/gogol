{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.BackendServices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of BackendService resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.list@.
module Network.Google.API.Compute.BackendServices.List
    (
    -- * REST Resource
      BackendServicesListAPI

    -- * Creating a Request
    , backendServicesList'
    , BackendServicesList'

    -- * Request Lenses
    , bslQuotaUser
    , bslPrettyPrint
    , bslProject
    , bslUserIp
    , bslKey
    , bslFilter
    , bslPageToken
    , bslOauthToken
    , bslMaxResults
    , bslFields
    , bslAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.backendServices.list which the
-- 'BackendServicesList'' request conforms to.
type BackendServicesListAPI =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
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
                               Get '[JSON] BackendServiceList

-- | Retrieves the list of BackendService resources available to the
-- specified project.
--
-- /See:/ 'backendServicesList'' smart constructor.
data BackendServicesList' = BackendServicesList'
    { _bslQuotaUser   :: !(Maybe Text)
    , _bslPrettyPrint :: !Bool
    , _bslProject     :: !Text
    , _bslUserIp      :: !(Maybe Text)
    , _bslKey         :: !(Maybe Text)
    , _bslFilter      :: !(Maybe Text)
    , _bslPageToken   :: !(Maybe Text)
    , _bslOauthToken  :: !(Maybe Text)
    , _bslMaxResults  :: !Word32
    , _bslFields      :: !(Maybe Text)
    , _bslAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bslQuotaUser'
--
-- * 'bslPrettyPrint'
--
-- * 'bslProject'
--
-- * 'bslUserIp'
--
-- * 'bslKey'
--
-- * 'bslFilter'
--
-- * 'bslPageToken'
--
-- * 'bslOauthToken'
--
-- * 'bslMaxResults'
--
-- * 'bslFields'
--
-- * 'bslAlt'
backendServicesList'
    :: Text -- ^ 'project'
    -> BackendServicesList'
backendServicesList' pBslProject_ =
    BackendServicesList'
    { _bslQuotaUser = Nothing
    , _bslPrettyPrint = True
    , _bslProject = pBslProject_
    , _bslUserIp = Nothing
    , _bslKey = Nothing
    , _bslFilter = Nothing
    , _bslPageToken = Nothing
    , _bslOauthToken = Nothing
    , _bslMaxResults = 500
    , _bslFields = Nothing
    , _bslAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bslQuotaUser :: Lens' BackendServicesList' (Maybe Text)
bslQuotaUser
  = lens _bslQuotaUser (\ s a -> s{_bslQuotaUser = a})

-- | Returns response with indentations and line breaks.
bslPrettyPrint :: Lens' BackendServicesList' Bool
bslPrettyPrint
  = lens _bslPrettyPrint
      (\ s a -> s{_bslPrettyPrint = a})

-- | Name of the project scoping this request.
bslProject :: Lens' BackendServicesList' Text
bslProject
  = lens _bslProject (\ s a -> s{_bslProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bslUserIp :: Lens' BackendServicesList' (Maybe Text)
bslUserIp
  = lens _bslUserIp (\ s a -> s{_bslUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bslKey :: Lens' BackendServicesList' (Maybe Text)
bslKey = lens _bslKey (\ s a -> s{_bslKey = a})

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
bslFilter :: Lens' BackendServicesList' (Maybe Text)
bslFilter
  = lens _bslFilter (\ s a -> s{_bslFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
bslPageToken :: Lens' BackendServicesList' (Maybe Text)
bslPageToken
  = lens _bslPageToken (\ s a -> s{_bslPageToken = a})

-- | OAuth 2.0 token for the current user.
bslOauthToken :: Lens' BackendServicesList' (Maybe Text)
bslOauthToken
  = lens _bslOauthToken
      (\ s a -> s{_bslOauthToken = a})

-- | Maximum count of results to be returned.
bslMaxResults :: Lens' BackendServicesList' Word32
bslMaxResults
  = lens _bslMaxResults
      (\ s a -> s{_bslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
bslFields :: Lens' BackendServicesList' (Maybe Text)
bslFields
  = lens _bslFields (\ s a -> s{_bslFields = a})

-- | Data format for the response.
bslAlt :: Lens' BackendServicesList' Alt
bslAlt = lens _bslAlt (\ s a -> s{_bslAlt = a})

instance GoogleRequest BackendServicesList' where
        type Rs BackendServicesList' = BackendServiceList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u BackendServicesList'{..}
          = go _bslQuotaUser (Just _bslPrettyPrint) _bslProject
              _bslUserIp
              _bslKey
              _bslFilter
              _bslPageToken
              _bslOauthToken
              (Just _bslMaxResults)
              _bslFields
              (Just _bslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackendServicesListAPI)
                      r
                      u
