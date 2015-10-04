{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Regions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of region resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRegionsList@.
module Network.Google.Resource.Compute.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList'
    , RegionsList'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rProject
    , rUserIP
    , rKey
    , rFilter
    , rPageToken
    , rOAuthToken
    , rMaxResults
    , rFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRegionsList@ which the
-- 'RegionsList'' request conforms to.
type RegionsListResource =
     Capture "project" Text :>
       "regions" :>
         QueryParam "filter" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] RegionList

-- | Retrieves the list of region resources available to the specified
-- project.
--
-- /See:/ 'regionsList'' smart constructor.
data RegionsList' = RegionsList'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rProject     :: !Text
    , _rUserIP      :: !(Maybe Text)
    , _rKey         :: !(Maybe Key)
    , _rFilter      :: !(Maybe Text)
    , _rPageToken   :: !(Maybe Text)
    , _rOAuthToken  :: !(Maybe OAuthToken)
    , _rMaxResults  :: !Word32
    , _rFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rProject'
--
-- * 'rUserIP'
--
-- * 'rKey'
--
-- * 'rFilter'
--
-- * 'rPageToken'
--
-- * 'rOAuthToken'
--
-- * 'rMaxResults'
--
-- * 'rFields'
regionsList'
    :: Text -- ^ 'project'
    -> RegionsList'
regionsList' pRProject_ =
    RegionsList'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rProject = pRProject_
    , _rUserIP = Nothing
    , _rKey = Nothing
    , _rFilter = Nothing
    , _rPageToken = Nothing
    , _rOAuthToken = Nothing
    , _rMaxResults = 500
    , _rFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RegionsList' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RegionsList' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | Project ID for this request.
rProject :: Lens' RegionsList' Text
rProject = lens _rProject (\ s a -> s{_rProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIP :: Lens' RegionsList' (Maybe Text)
rUserIP = lens _rUserIP (\ s a -> s{_rUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RegionsList' (Maybe Key)
rKey = lens _rKey (\ s a -> s{_rKey = a})

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
rFilter :: Lens' RegionsList' (Maybe Text)
rFilter = lens _rFilter (\ s a -> s{_rFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
rPageToken :: Lens' RegionsList' (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' RegionsList' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Maximum count of results to be returned.
rMaxResults :: Lens' RegionsList' Word32
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RegionsList' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

instance GoogleAuth RegionsList' where
        authKey = rKey . _Just
        authToken = rOAuthToken . _Just

instance GoogleRequest RegionsList' where
        type Rs RegionsList' = RegionList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RegionsList'{..}
          = go _rProject _rFilter _rPageToken
              (Just _rMaxResults)
              _rQuotaUser
              (Just _rPrettyPrint)
              _rUserIP
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RegionsListResource)
                      r
                      u
