{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.RegionOperations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of Operation resources contained within the specified
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionOperations.list@.
module Network.Google.API.Compute.RegionOperations.List
    (
    -- * REST Resource
      RegionOperationsListAPI

    -- * Creating a Request
    , regionOperationsList'
    , RegionOperationsList'

    -- * Request Lenses
    , rolQuotaUser
    , rolPrettyPrint
    , rolProject
    , rolUserIp
    , rolKey
    , rolFilter
    , rolRegion
    , rolPageToken
    , rolOauthToken
    , rolMaxResults
    , rolFields
    , rolAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.regionOperations.list which the
-- 'RegionOperationsList'' request conforms to.
type RegionOperationsListAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
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
                               QueryParam "alt" Alt :> Get '[JSON] OperationList

-- | Retrieves the list of Operation resources contained within the specified
-- region.
--
-- /See:/ 'regionOperationsList'' smart constructor.
data RegionOperationsList' = RegionOperationsList'
    { _rolQuotaUser   :: !(Maybe Text)
    , _rolPrettyPrint :: !Bool
    , _rolProject     :: !Text
    , _rolUserIp      :: !(Maybe Text)
    , _rolKey         :: !(Maybe Text)
    , _rolFilter      :: !(Maybe Text)
    , _rolRegion      :: !Text
    , _rolPageToken   :: !(Maybe Text)
    , _rolOauthToken  :: !(Maybe Text)
    , _rolMaxResults  :: !Word32
    , _rolFields      :: !(Maybe Text)
    , _rolAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rolQuotaUser'
--
-- * 'rolPrettyPrint'
--
-- * 'rolProject'
--
-- * 'rolUserIp'
--
-- * 'rolKey'
--
-- * 'rolFilter'
--
-- * 'rolRegion'
--
-- * 'rolPageToken'
--
-- * 'rolOauthToken'
--
-- * 'rolMaxResults'
--
-- * 'rolFields'
--
-- * 'rolAlt'
regionOperationsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> RegionOperationsList'
regionOperationsList' pRolProject_ pRolRegion_ =
    RegionOperationsList'
    { _rolQuotaUser = Nothing
    , _rolPrettyPrint = True
    , _rolProject = pRolProject_
    , _rolUserIp = Nothing
    , _rolKey = Nothing
    , _rolFilter = Nothing
    , _rolRegion = pRolRegion_
    , _rolPageToken = Nothing
    , _rolOauthToken = Nothing
    , _rolMaxResults = 500
    , _rolFields = Nothing
    , _rolAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rolQuotaUser :: Lens' RegionOperationsList' (Maybe Text)
rolQuotaUser
  = lens _rolQuotaUser (\ s a -> s{_rolQuotaUser = a})

-- | Returns response with indentations and line breaks.
rolPrettyPrint :: Lens' RegionOperationsList' Bool
rolPrettyPrint
  = lens _rolPrettyPrint
      (\ s a -> s{_rolPrettyPrint = a})

-- | Project ID for this request.
rolProject :: Lens' RegionOperationsList' Text
rolProject
  = lens _rolProject (\ s a -> s{_rolProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rolUserIp :: Lens' RegionOperationsList' (Maybe Text)
rolUserIp
  = lens _rolUserIp (\ s a -> s{_rolUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rolKey :: Lens' RegionOperationsList' (Maybe Text)
rolKey = lens _rolKey (\ s a -> s{_rolKey = a})

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
rolFilter :: Lens' RegionOperationsList' (Maybe Text)
rolFilter
  = lens _rolFilter (\ s a -> s{_rolFilter = a})

-- | Name of the region scoping this request.
rolRegion :: Lens' RegionOperationsList' Text
rolRegion
  = lens _rolRegion (\ s a -> s{_rolRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
rolPageToken :: Lens' RegionOperationsList' (Maybe Text)
rolPageToken
  = lens _rolPageToken (\ s a -> s{_rolPageToken = a})

-- | OAuth 2.0 token for the current user.
rolOauthToken :: Lens' RegionOperationsList' (Maybe Text)
rolOauthToken
  = lens _rolOauthToken
      (\ s a -> s{_rolOauthToken = a})

-- | Maximum count of results to be returned.
rolMaxResults :: Lens' RegionOperationsList' Word32
rolMaxResults
  = lens _rolMaxResults
      (\ s a -> s{_rolMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rolFields :: Lens' RegionOperationsList' (Maybe Text)
rolFields
  = lens _rolFields (\ s a -> s{_rolFields = a})

-- | Data format for the response.
rolAlt :: Lens' RegionOperationsList' Alt
rolAlt = lens _rolAlt (\ s a -> s{_rolAlt = a})

instance GoogleRequest RegionOperationsList' where
        type Rs RegionOperationsList' = OperationList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RegionOperationsList'{..}
          = go _rolQuotaUser (Just _rolPrettyPrint) _rolProject
              _rolUserIp
              _rolKey
              _rolFilter
              _rolRegion
              _rolPageToken
              _rolOauthToken
              (Just _rolMaxResults)
              _rolFields
              (Just _rolAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RegionOperationsListAPI)
                      r
                      u
