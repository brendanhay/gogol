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
-- Module      : Network.Google.Resource.Compute.Addresses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of address resources contained within the specified
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAddressesList@.
module Network.Google.Resource.Compute.Addresses.List
    (
    -- * REST Resource
      AddressesListResource

    -- * Creating a Request
    , addressesList'
    , AddressesList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alProject
    , alUserIp
    , alKey
    , alFilter
    , alRegion
    , alPageToken
    , alOauthToken
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesList@ which the
-- 'AddressesList'' request conforms to.
type AddressesListResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
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
                               QueryParam "alt" Alt :> Get '[JSON] AddressList

-- | Retrieves the list of address resources contained within the specified
-- region.
--
-- /See:/ 'addressesList'' smart constructor.
data AddressesList' = AddressesList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alProject     :: !Text
    , _alUserIp      :: !(Maybe Text)
    , _alKey         :: !(Maybe Text)
    , _alFilter      :: !(Maybe Text)
    , _alRegion      :: !Text
    , _alPageToken   :: !(Maybe Text)
    , _alOauthToken  :: !(Maybe Text)
    , _alMaxResults  :: !Word32
    , _alFields      :: !(Maybe Text)
    , _alAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alProject'
--
-- * 'alUserIp'
--
-- * 'alKey'
--
-- * 'alFilter'
--
-- * 'alRegion'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
addressesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> AddressesList'
addressesList' pAlProject_ pAlRegion_ =
    AddressesList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alProject = pAlProject_
    , _alUserIp = Nothing
    , _alKey = Nothing
    , _alFilter = Nothing
    , _alRegion = pAlRegion_
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alMaxResults = 500
    , _alFields = Nothing
    , _alAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AddressesList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AddressesList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | Project ID for this request.
alProject :: Lens' AddressesList' Text
alProject
  = lens _alProject (\ s a -> s{_alProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' AddressesList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AddressesList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

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
alFilter :: Lens' AddressesList' (Maybe Text)
alFilter = lens _alFilter (\ s a -> s{_alFilter = a})

-- | The name of the region for this request.
alRegion :: Lens' AddressesList' Text
alRegion = lens _alRegion (\ s a -> s{_alRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
alPageToken :: Lens' AddressesList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' AddressesList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | Maximum count of results to be returned.
alMaxResults :: Lens' AddressesList' Word32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AddressesList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' AddressesList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest AddressesList' where
        type Rs AddressesList' = AddressList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesList'{..}
          = go _alQuotaUser (Just _alPrettyPrint) _alProject
              _alUserIp
              _alKey
              _alFilter
              _alRegion
              _alPageToken
              _alOauthToken
              (Just _alMaxResults)
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AddressesListResource)
                      r
                      u
