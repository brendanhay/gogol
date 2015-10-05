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
-- Module      : Network.Google.Resource.Compute.RegionOperations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of Operation resources contained within the specified
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRegionOperationsList@.
module Network.Google.Resource.Compute.RegionOperations.List
    (
    -- * REST Resource
      RegionOperationsListResource

    -- * Creating a Request
    , regionOperationsList'
    , RegionOperationsList'

    -- * Request Lenses
    , rolQuotaUser
    , rolPrettyPrint
    , rolProject
    , rolUserIP
    , rolKey
    , rolFilter
    , rolRegion
    , rolPageToken
    , rolOAuthToken
    , rolMaxResults
    , rolFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRegionOperationsList@ which the
-- 'RegionOperationsList'' request conforms to.
type RegionOperationsListResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "operations" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] OperationList

-- | Retrieves the list of Operation resources contained within the specified
-- region.
--
-- /See:/ 'regionOperationsList'' smart constructor.
data RegionOperationsList' = RegionOperationsList'
    { _rolQuotaUser   :: !(Maybe Text)
    , _rolPrettyPrint :: !Bool
    , _rolProject     :: !Text
    , _rolUserIP      :: !(Maybe Text)
    , _rolKey         :: !(Maybe Key)
    , _rolFilter      :: !(Maybe Text)
    , _rolRegion      :: !Text
    , _rolPageToken   :: !(Maybe Text)
    , _rolOAuthToken  :: !(Maybe OAuthToken)
    , _rolMaxResults  :: !Word32
    , _rolFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rolUserIP'
--
-- * 'rolKey'
--
-- * 'rolFilter'
--
-- * 'rolRegion'
--
-- * 'rolPageToken'
--
-- * 'rolOAuthToken'
--
-- * 'rolMaxResults'
--
-- * 'rolFields'
regionOperationsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> RegionOperationsList'
regionOperationsList' pRolProject_ pRolRegion_ =
    RegionOperationsList'
    { _rolQuotaUser = Nothing
    , _rolPrettyPrint = True
    , _rolProject = pRolProject_
    , _rolUserIP = Nothing
    , _rolKey = Nothing
    , _rolFilter = Nothing
    , _rolRegion = pRolRegion_
    , _rolPageToken = Nothing
    , _rolOAuthToken = Nothing
    , _rolMaxResults = 500
    , _rolFields = Nothing
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
rolUserIP :: Lens' RegionOperationsList' (Maybe Text)
rolUserIP
  = lens _rolUserIP (\ s a -> s{_rolUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rolKey :: Lens' RegionOperationsList' (Maybe Key)
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
rolOAuthToken :: Lens' RegionOperationsList' (Maybe OAuthToken)
rolOAuthToken
  = lens _rolOAuthToken
      (\ s a -> s{_rolOAuthToken = a})

-- | Maximum count of results to be returned.
rolMaxResults :: Lens' RegionOperationsList' Word32
rolMaxResults
  = lens _rolMaxResults
      (\ s a -> s{_rolMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rolFields :: Lens' RegionOperationsList' (Maybe Text)
rolFields
  = lens _rolFields (\ s a -> s{_rolFields = a})

instance GoogleAuth RegionOperationsList' where
        authKey = rolKey . _Just
        authToken = rolOAuthToken . _Just

instance GoogleRequest RegionOperationsList' where
        type Rs RegionOperationsList' = OperationList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RegionOperationsList'{..}
          = go _rolProject _rolRegion _rolFilter _rolPageToken
              (Just _rolMaxResults)
              _rolQuotaUser
              (Just _rolPrettyPrint)
              _rolUserIP
              _rolFields
              _rolKey
              _rolOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RegionOperationsListResource)
                      r
                      u
