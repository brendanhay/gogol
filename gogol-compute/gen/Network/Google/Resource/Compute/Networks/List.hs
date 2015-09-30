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
-- Module      : Network.Google.Resource.Compute.Networks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of network resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeNetworksList@.
module Network.Google.Resource.Compute.Networks.List
    (
    -- * REST Resource
      NetworksListResource

    -- * Creating a Request
    , networksList'
    , NetworksList'

    -- * Request Lenses
    , nlQuotaUser
    , nlPrettyPrint
    , nlProject
    , nlUserIp
    , nlKey
    , nlFilter
    , nlPageToken
    , nlOauthToken
    , nlMaxResults
    , nlFields
    , nlAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeNetworksList@ which the
-- 'NetworksList'' request conforms to.
type NetworksListResource =
     Capture "project" Text :>
       "global" :>
         "networks" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] NetworkList

-- | Retrieves the list of network resources available to the specified
-- project.
--
-- /See:/ 'networksList'' smart constructor.
data NetworksList' = NetworksList'
    { _nlQuotaUser   :: !(Maybe Text)
    , _nlPrettyPrint :: !Bool
    , _nlProject     :: !Text
    , _nlUserIp      :: !(Maybe Text)
    , _nlKey         :: !(Maybe Text)
    , _nlFilter      :: !(Maybe Text)
    , _nlPageToken   :: !(Maybe Text)
    , _nlOauthToken  :: !(Maybe Text)
    , _nlMaxResults  :: !Word32
    , _nlFields      :: !(Maybe Text)
    , _nlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlQuotaUser'
--
-- * 'nlPrettyPrint'
--
-- * 'nlProject'
--
-- * 'nlUserIp'
--
-- * 'nlKey'
--
-- * 'nlFilter'
--
-- * 'nlPageToken'
--
-- * 'nlOauthToken'
--
-- * 'nlMaxResults'
--
-- * 'nlFields'
--
-- * 'nlAlt'
networksList'
    :: Text -- ^ 'project'
    -> NetworksList'
networksList' pNlProject_ =
    NetworksList'
    { _nlQuotaUser = Nothing
    , _nlPrettyPrint = True
    , _nlProject = pNlProject_
    , _nlUserIp = Nothing
    , _nlKey = Nothing
    , _nlFilter = Nothing
    , _nlPageToken = Nothing
    , _nlOauthToken = Nothing
    , _nlMaxResults = 500
    , _nlFields = Nothing
    , _nlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
nlQuotaUser :: Lens' NetworksList' (Maybe Text)
nlQuotaUser
  = lens _nlQuotaUser (\ s a -> s{_nlQuotaUser = a})

-- | Returns response with indentations and line breaks.
nlPrettyPrint :: Lens' NetworksList' Bool
nlPrettyPrint
  = lens _nlPrettyPrint
      (\ s a -> s{_nlPrettyPrint = a})

-- | Project ID for this request.
nlProject :: Lens' NetworksList' Text
nlProject
  = lens _nlProject (\ s a -> s{_nlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
nlUserIp :: Lens' NetworksList' (Maybe Text)
nlUserIp = lens _nlUserIp (\ s a -> s{_nlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nlKey :: Lens' NetworksList' (Maybe Text)
nlKey = lens _nlKey (\ s a -> s{_nlKey = a})

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
nlFilter :: Lens' NetworksList' (Maybe Text)
nlFilter = lens _nlFilter (\ s a -> s{_nlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
nlPageToken :: Lens' NetworksList' (Maybe Text)
nlPageToken
  = lens _nlPageToken (\ s a -> s{_nlPageToken = a})

-- | OAuth 2.0 token for the current user.
nlOauthToken :: Lens' NetworksList' (Maybe Text)
nlOauthToken
  = lens _nlOauthToken (\ s a -> s{_nlOauthToken = a})

-- | Maximum count of results to be returned.
nlMaxResults :: Lens' NetworksList' Word32
nlMaxResults
  = lens _nlMaxResults (\ s a -> s{_nlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
nlFields :: Lens' NetworksList' (Maybe Text)
nlFields = lens _nlFields (\ s a -> s{_nlFields = a})

-- | Data format for the response.
nlAlt :: Lens' NetworksList' Alt
nlAlt = lens _nlAlt (\ s a -> s{_nlAlt = a})

instance GoogleRequest NetworksList' where
        type Rs NetworksList' = NetworkList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u NetworksList'{..}
          = go _nlQuotaUser (Just _nlPrettyPrint) _nlProject
              _nlUserIp
              _nlKey
              _nlFilter
              _nlPageToken
              _nlOauthToken
              (Just _nlMaxResults)
              _nlFields
              (Just _nlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NetworksListResource)
                      r
                      u
