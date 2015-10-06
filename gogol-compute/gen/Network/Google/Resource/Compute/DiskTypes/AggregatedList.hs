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
-- Module      : Network.Google.Resource.Compute.DiskTypes.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of disk type resources grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDiskTypesAggregatedList@.
module Network.Google.Resource.Compute.DiskTypes.AggregatedList
    (
    -- * REST Resource
      DiskTypesAggregatedListResource

    -- * Creating a Request
    , diskTypesAggregatedList'
    , DiskTypesAggregatedList'

    -- * Request Lenses
    , dtalQuotaUser
    , dtalPrettyPrint
    , dtalProject
    , dtalUserIP
    , dtalKey
    , dtalFilter
    , dtalPageToken
    , dtalOAuthToken
    , dtalMaxResults
    , dtalFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDiskTypesAggregatedList@ which the
-- 'DiskTypesAggregatedList'' request conforms to.
type DiskTypesAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "diskTypes" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] DiskTypeAggregatedList

-- | Retrieves the list of disk type resources grouped by scope.
--
-- /See:/ 'diskTypesAggregatedList'' smart constructor.
data DiskTypesAggregatedList' = DiskTypesAggregatedList'
    { _dtalQuotaUser   :: !(Maybe Text)
    , _dtalPrettyPrint :: !Bool
    , _dtalProject     :: !Text
    , _dtalUserIP      :: !(Maybe Text)
    , _dtalKey         :: !(Maybe AuthKey)
    , _dtalFilter      :: !(Maybe Text)
    , _dtalPageToken   :: !(Maybe Text)
    , _dtalOAuthToken  :: !(Maybe OAuthToken)
    , _dtalMaxResults  :: !Word32
    , _dtalFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtalQuotaUser'
--
-- * 'dtalPrettyPrint'
--
-- * 'dtalProject'
--
-- * 'dtalUserIP'
--
-- * 'dtalKey'
--
-- * 'dtalFilter'
--
-- * 'dtalPageToken'
--
-- * 'dtalOAuthToken'
--
-- * 'dtalMaxResults'
--
-- * 'dtalFields'
diskTypesAggregatedList'
    :: Text -- ^ 'project'
    -> DiskTypesAggregatedList'
diskTypesAggregatedList' pDtalProject_ =
    DiskTypesAggregatedList'
    { _dtalQuotaUser = Nothing
    , _dtalPrettyPrint = True
    , _dtalProject = pDtalProject_
    , _dtalUserIP = Nothing
    , _dtalKey = Nothing
    , _dtalFilter = Nothing
    , _dtalPageToken = Nothing
    , _dtalOAuthToken = Nothing
    , _dtalMaxResults = 500
    , _dtalFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dtalQuotaUser :: Lens' DiskTypesAggregatedList' (Maybe Text)
dtalQuotaUser
  = lens _dtalQuotaUser
      (\ s a -> s{_dtalQuotaUser = a})

-- | Returns response with indentations and line breaks.
dtalPrettyPrint :: Lens' DiskTypesAggregatedList' Bool
dtalPrettyPrint
  = lens _dtalPrettyPrint
      (\ s a -> s{_dtalPrettyPrint = a})

-- | Project ID for this request.
dtalProject :: Lens' DiskTypesAggregatedList' Text
dtalProject
  = lens _dtalProject (\ s a -> s{_dtalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dtalUserIP :: Lens' DiskTypesAggregatedList' (Maybe Text)
dtalUserIP
  = lens _dtalUserIP (\ s a -> s{_dtalUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dtalKey :: Lens' DiskTypesAggregatedList' (Maybe AuthKey)
dtalKey = lens _dtalKey (\ s a -> s{_dtalKey = a})

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
dtalFilter :: Lens' DiskTypesAggregatedList' (Maybe Text)
dtalFilter
  = lens _dtalFilter (\ s a -> s{_dtalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dtalPageToken :: Lens' DiskTypesAggregatedList' (Maybe Text)
dtalPageToken
  = lens _dtalPageToken
      (\ s a -> s{_dtalPageToken = a})

-- | OAuth 2.0 token for the current user.
dtalOAuthToken :: Lens' DiskTypesAggregatedList' (Maybe OAuthToken)
dtalOAuthToken
  = lens _dtalOAuthToken
      (\ s a -> s{_dtalOAuthToken = a})

-- | Maximum count of results to be returned.
dtalMaxResults :: Lens' DiskTypesAggregatedList' Word32
dtalMaxResults
  = lens _dtalMaxResults
      (\ s a -> s{_dtalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dtalFields :: Lens' DiskTypesAggregatedList' (Maybe Text)
dtalFields
  = lens _dtalFields (\ s a -> s{_dtalFields = a})

instance GoogleAuth DiskTypesAggregatedList' where
        _AuthKey = dtalKey . _Just
        _AuthToken = dtalOAuthToken . _Just

instance GoogleRequest DiskTypesAggregatedList' where
        type Rs DiskTypesAggregatedList' =
             DiskTypeAggregatedList
        request = requestWith computeRequest
        requestWith rq DiskTypesAggregatedList'{..}
          = go _dtalProject _dtalFilter _dtalPageToken
              (Just _dtalMaxResults)
              _dtalQuotaUser
              (Just _dtalPrettyPrint)
              _dtalUserIP
              _dtalFields
              _dtalKey
              _dtalOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy DiskTypesAggregatedListResource)
                      rq
