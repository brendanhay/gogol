{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Addresses.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of addresses grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.addresses.aggregatedList@.
module Network.Google.API.Compute.Addresses.AggregatedList
    (
    -- * REST Resource
      AddressesAggregatedListAPI

    -- * Creating a Request
    , addressesAggregatedList'
    , AddressesAggregatedList'

    -- * Request Lenses
    , aalQuotaUser
    , aalPrettyPrint
    , aalProject
    , aalUserIp
    , aalKey
    , aalFilter
    , aalPageToken
    , aalOauthToken
    , aalMaxResults
    , aalFields
    , aalAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.addresses.aggregatedList which the
-- 'AddressesAggregatedList'' request conforms to.
type AddressesAggregatedListAPI =
     Capture "project" Text :>
       "aggregated" :>
         "addresses" :>
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
                               Get '[JSON] AddressAggregatedList

-- | Retrieves the list of addresses grouped by scope.
--
-- /See:/ 'addressesAggregatedList'' smart constructor.
data AddressesAggregatedList' = AddressesAggregatedList'
    { _aalQuotaUser   :: !(Maybe Text)
    , _aalPrettyPrint :: !Bool
    , _aalProject     :: !Text
    , _aalUserIp      :: !(Maybe Text)
    , _aalKey         :: !(Maybe Text)
    , _aalFilter      :: !(Maybe Text)
    , _aalPageToken   :: !(Maybe Text)
    , _aalOauthToken  :: !(Maybe Text)
    , _aalMaxResults  :: !Word32
    , _aalFields      :: !(Maybe Text)
    , _aalAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalQuotaUser'
--
-- * 'aalPrettyPrint'
--
-- * 'aalProject'
--
-- * 'aalUserIp'
--
-- * 'aalKey'
--
-- * 'aalFilter'
--
-- * 'aalPageToken'
--
-- * 'aalOauthToken'
--
-- * 'aalMaxResults'
--
-- * 'aalFields'
--
-- * 'aalAlt'
addressesAggregatedList'
    :: Text -- ^ 'project'
    -> AddressesAggregatedList'
addressesAggregatedList' pAalProject_ =
    AddressesAggregatedList'
    { _aalQuotaUser = Nothing
    , _aalPrettyPrint = True
    , _aalProject = pAalProject_
    , _aalUserIp = Nothing
    , _aalKey = Nothing
    , _aalFilter = Nothing
    , _aalPageToken = Nothing
    , _aalOauthToken = Nothing
    , _aalMaxResults = 500
    , _aalFields = Nothing
    , _aalAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aalQuotaUser :: Lens' AddressesAggregatedList' (Maybe Text)
aalQuotaUser
  = lens _aalQuotaUser (\ s a -> s{_aalQuotaUser = a})

-- | Returns response with indentations and line breaks.
aalPrettyPrint :: Lens' AddressesAggregatedList' Bool
aalPrettyPrint
  = lens _aalPrettyPrint
      (\ s a -> s{_aalPrettyPrint = a})

-- | Project ID for this request.
aalProject :: Lens' AddressesAggregatedList' Text
aalProject
  = lens _aalProject (\ s a -> s{_aalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aalUserIp :: Lens' AddressesAggregatedList' (Maybe Text)
aalUserIp
  = lens _aalUserIp (\ s a -> s{_aalUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aalKey :: Lens' AddressesAggregatedList' (Maybe Text)
aalKey = lens _aalKey (\ s a -> s{_aalKey = a})

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
aalFilter :: Lens' AddressesAggregatedList' (Maybe Text)
aalFilter
  = lens _aalFilter (\ s a -> s{_aalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
aalPageToken :: Lens' AddressesAggregatedList' (Maybe Text)
aalPageToken
  = lens _aalPageToken (\ s a -> s{_aalPageToken = a})

-- | OAuth 2.0 token for the current user.
aalOauthToken :: Lens' AddressesAggregatedList' (Maybe Text)
aalOauthToken
  = lens _aalOauthToken
      (\ s a -> s{_aalOauthToken = a})

-- | Maximum count of results to be returned.
aalMaxResults :: Lens' AddressesAggregatedList' Word32
aalMaxResults
  = lens _aalMaxResults
      (\ s a -> s{_aalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aalFields :: Lens' AddressesAggregatedList' (Maybe Text)
aalFields
  = lens _aalFields (\ s a -> s{_aalFields = a})

-- | Data format for the response.
aalAlt :: Lens' AddressesAggregatedList' Alt
aalAlt = lens _aalAlt (\ s a -> s{_aalAlt = a})

instance GoogleRequest AddressesAggregatedList' where
        type Rs AddressesAggregatedList' =
             AddressAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesAggregatedList'{..}
          = go _aalQuotaUser (Just _aalPrettyPrint) _aalProject
              _aalUserIp
              _aalKey
              _aalFilter
              _aalPageToken
              _aalOauthToken
              (Just _aalMaxResults)
              _aalFields
              (Just _aalAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AddressesAggregatedListAPI)
                      r
                      u
