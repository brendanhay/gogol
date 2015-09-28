{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Addresses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of address resources contained within the specified
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.addresses.list@.
module Network.Google.API.Compute.Addresses.List
    (
    -- * REST Resource
      AddressesListAPI

    -- * Creating a Request
    , addressesList'
    , AddressesList'

    -- * Request Lenses
    , allQuotaUser
    , allPrettyPrint
    , allProject
    , allUserIp
    , allKey
    , allFilter
    , allRegion
    , allPageToken
    , allOauthToken
    , allMaxResults
    , allFields
    , allAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.addresses.list which the
-- 'AddressesList'' request conforms to.
type AddressesListAPI =
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
    { _allQuotaUser   :: !(Maybe Text)
    , _allPrettyPrint :: !Bool
    , _allProject     :: !Text
    , _allUserIp      :: !(Maybe Text)
    , _allKey         :: !(Maybe Text)
    , _allFilter      :: !(Maybe Text)
    , _allRegion      :: !Text
    , _allPageToken   :: !(Maybe Text)
    , _allOauthToken  :: !(Maybe Text)
    , _allMaxResults  :: !Word32
    , _allFields      :: !(Maybe Text)
    , _allAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allQuotaUser'
--
-- * 'allPrettyPrint'
--
-- * 'allProject'
--
-- * 'allUserIp'
--
-- * 'allKey'
--
-- * 'allFilter'
--
-- * 'allRegion'
--
-- * 'allPageToken'
--
-- * 'allOauthToken'
--
-- * 'allMaxResults'
--
-- * 'allFields'
--
-- * 'allAlt'
addressesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> AddressesList'
addressesList' pAllProject_ pAllRegion_ =
    AddressesList'
    { _allQuotaUser = Nothing
    , _allPrettyPrint = True
    , _allProject = pAllProject_
    , _allUserIp = Nothing
    , _allKey = Nothing
    , _allFilter = Nothing
    , _allRegion = pAllRegion_
    , _allPageToken = Nothing
    , _allOauthToken = Nothing
    , _allMaxResults = 500
    , _allFields = Nothing
    , _allAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
allQuotaUser :: Lens' AddressesList' (Maybe Text)
allQuotaUser
  = lens _allQuotaUser (\ s a -> s{_allQuotaUser = a})

-- | Returns response with indentations and line breaks.
allPrettyPrint :: Lens' AddressesList' Bool
allPrettyPrint
  = lens _allPrettyPrint
      (\ s a -> s{_allPrettyPrint = a})

-- | Project ID for this request.
allProject :: Lens' AddressesList' Text
allProject
  = lens _allProject (\ s a -> s{_allProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
allUserIp :: Lens' AddressesList' (Maybe Text)
allUserIp
  = lens _allUserIp (\ s a -> s{_allUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
allKey :: Lens' AddressesList' (Maybe Text)
allKey = lens _allKey (\ s a -> s{_allKey = a})

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
allFilter :: Lens' AddressesList' (Maybe Text)
allFilter
  = lens _allFilter (\ s a -> s{_allFilter = a})

-- | The name of the region for this request.
allRegion :: Lens' AddressesList' Text
allRegion
  = lens _allRegion (\ s a -> s{_allRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
allPageToken :: Lens' AddressesList' (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | OAuth 2.0 token for the current user.
allOauthToken :: Lens' AddressesList' (Maybe Text)
allOauthToken
  = lens _allOauthToken
      (\ s a -> s{_allOauthToken = a})

-- | Maximum count of results to be returned.
allMaxResults :: Lens' AddressesList' Word32
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
allFields :: Lens' AddressesList' (Maybe Text)
allFields
  = lens _allFields (\ s a -> s{_allFields = a})

-- | Data format for the response.
allAlt :: Lens' AddressesList' Alt
allAlt = lens _allAlt (\ s a -> s{_allAlt = a})

instance GoogleRequest AddressesList' where
        type Rs AddressesList' = AddressList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesList'{..}
          = go _allQuotaUser (Just _allPrettyPrint) _allProject
              _allUserIp
              _allKey
              _allFilter
              _allRegion
              _allPageToken
              _allOauthToken
              (Just _allMaxResults)
              _allFields
              (Just _allAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AddressesListAPI) r
                      u
