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
    , nlUserIP
    , nlKey
    , nlFilter
    , nlPageToken
    , nlOAuthToken
    , nlMaxResults
    , nlFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeNetworksList@ which the
-- 'NetworksList'' request conforms to.
type NetworksListResource =
     Capture "project" Text :>
       "global" :>
         "networks" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] NetworkList

-- | Retrieves the list of network resources available to the specified
-- project.
--
-- /See:/ 'networksList'' smart constructor.
data NetworksList' = NetworksList'
    { _nlQuotaUser   :: !(Maybe Text)
    , _nlPrettyPrint :: !Bool
    , _nlProject     :: !Text
    , _nlUserIP      :: !(Maybe Text)
    , _nlKey         :: !(Maybe AuthKey)
    , _nlFilter      :: !(Maybe Text)
    , _nlPageToken   :: !(Maybe Text)
    , _nlOAuthToken  :: !(Maybe OAuthToken)
    , _nlMaxResults  :: !Word32
    , _nlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'nlUserIP'
--
-- * 'nlKey'
--
-- * 'nlFilter'
--
-- * 'nlPageToken'
--
-- * 'nlOAuthToken'
--
-- * 'nlMaxResults'
--
-- * 'nlFields'
networksList'
    :: Text -- ^ 'project'
    -> NetworksList'
networksList' pNlProject_ =
    NetworksList'
    { _nlQuotaUser = Nothing
    , _nlPrettyPrint = True
    , _nlProject = pNlProject_
    , _nlUserIP = Nothing
    , _nlKey = Nothing
    , _nlFilter = Nothing
    , _nlPageToken = Nothing
    , _nlOAuthToken = Nothing
    , _nlMaxResults = 500
    , _nlFields = Nothing
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
nlUserIP :: Lens' NetworksList' (Maybe Text)
nlUserIP = lens _nlUserIP (\ s a -> s{_nlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nlKey :: Lens' NetworksList' (Maybe AuthKey)
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
nlOAuthToken :: Lens' NetworksList' (Maybe OAuthToken)
nlOAuthToken
  = lens _nlOAuthToken (\ s a -> s{_nlOAuthToken = a})

-- | Maximum count of results to be returned.
nlMaxResults :: Lens' NetworksList' Word32
nlMaxResults
  = lens _nlMaxResults (\ s a -> s{_nlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
nlFields :: Lens' NetworksList' (Maybe Text)
nlFields = lens _nlFields (\ s a -> s{_nlFields = a})

instance GoogleAuth NetworksList' where
        authKey = nlKey . _Just
        authToken = nlOAuthToken . _Just

instance GoogleRequest NetworksList' where
        type Rs NetworksList' = NetworkList
        request = requestWith computeRequest
        requestWith rq NetworksList'{..}
          = go _nlProject _nlFilter _nlPageToken
              (Just _nlMaxResults)
              _nlQuotaUser
              (Just _nlPrettyPrint)
              _nlUserIP
              _nlFields
              _nlKey
              _nlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy NetworksListResource)
                      rq
