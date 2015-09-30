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
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of global address resources.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalAddressesList@.
module Network.Google.Resource.Compute.GlobalAddresses.List
    (
    -- * REST Resource
      GlobalAddressesListResource

    -- * Creating a Request
    , globalAddressesList'
    , GlobalAddressesList'

    -- * Request Lenses
    , galQuotaUser
    , galPrettyPrint
    , galProject
    , galUserIp
    , galKey
    , galFilter
    , galPageToken
    , galOauthToken
    , galMaxResults
    , galFields
    , galAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalAddressesList@ which the
-- 'GlobalAddressesList'' request conforms to.
type GlobalAddressesListResource =
     Capture "project" Text :>
       "global" :>
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

-- | Retrieves the list of global address resources.
--
-- /See:/ 'globalAddressesList'' smart constructor.
data GlobalAddressesList' = GlobalAddressesList'
    { _galQuotaUser   :: !(Maybe Text)
    , _galPrettyPrint :: !Bool
    , _galProject     :: !Text
    , _galUserIp      :: !(Maybe Text)
    , _galKey         :: !(Maybe Text)
    , _galFilter      :: !(Maybe Text)
    , _galPageToken   :: !(Maybe Text)
    , _galOauthToken  :: !(Maybe Text)
    , _galMaxResults  :: !Word32
    , _galFields      :: !(Maybe Text)
    , _galAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galQuotaUser'
--
-- * 'galPrettyPrint'
--
-- * 'galProject'
--
-- * 'galUserIp'
--
-- * 'galKey'
--
-- * 'galFilter'
--
-- * 'galPageToken'
--
-- * 'galOauthToken'
--
-- * 'galMaxResults'
--
-- * 'galFields'
--
-- * 'galAlt'
globalAddressesList'
    :: Text -- ^ 'project'
    -> GlobalAddressesList'
globalAddressesList' pGalProject_ =
    GlobalAddressesList'
    { _galQuotaUser = Nothing
    , _galPrettyPrint = True
    , _galProject = pGalProject_
    , _galUserIp = Nothing
    , _galKey = Nothing
    , _galFilter = Nothing
    , _galPageToken = Nothing
    , _galOauthToken = Nothing
    , _galMaxResults = 500
    , _galFields = Nothing
    , _galAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
galQuotaUser :: Lens' GlobalAddressesList' (Maybe Text)
galQuotaUser
  = lens _galQuotaUser (\ s a -> s{_galQuotaUser = a})

-- | Returns response with indentations and line breaks.
galPrettyPrint :: Lens' GlobalAddressesList' Bool
galPrettyPrint
  = lens _galPrettyPrint
      (\ s a -> s{_galPrettyPrint = a})

-- | Project ID for this request.
galProject :: Lens' GlobalAddressesList' Text
galProject
  = lens _galProject (\ s a -> s{_galProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
galUserIp :: Lens' GlobalAddressesList' (Maybe Text)
galUserIp
  = lens _galUserIp (\ s a -> s{_galUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
galKey :: Lens' GlobalAddressesList' (Maybe Text)
galKey = lens _galKey (\ s a -> s{_galKey = a})

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
galFilter :: Lens' GlobalAddressesList' (Maybe Text)
galFilter
  = lens _galFilter (\ s a -> s{_galFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
galPageToken :: Lens' GlobalAddressesList' (Maybe Text)
galPageToken
  = lens _galPageToken (\ s a -> s{_galPageToken = a})

-- | OAuth 2.0 token for the current user.
galOauthToken :: Lens' GlobalAddressesList' (Maybe Text)
galOauthToken
  = lens _galOauthToken
      (\ s a -> s{_galOauthToken = a})

-- | Maximum count of results to be returned.
galMaxResults :: Lens' GlobalAddressesList' Word32
galMaxResults
  = lens _galMaxResults
      (\ s a -> s{_galMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
galFields :: Lens' GlobalAddressesList' (Maybe Text)
galFields
  = lens _galFields (\ s a -> s{_galFields = a})

-- | Data format for the response.
galAlt :: Lens' GlobalAddressesList' Alt
galAlt = lens _galAlt (\ s a -> s{_galAlt = a})

instance GoogleRequest GlobalAddressesList' where
        type Rs GlobalAddressesList' = AddressList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalAddressesList'{..}
          = go _galQuotaUser (Just _galPrettyPrint) _galProject
              _galUserIp
              _galKey
              _galFilter
              _galPageToken
              _galOauthToken
              (Just _galMaxResults)
              _galFields
              (Just _galAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalAddressesListResource)
                      r
                      u
