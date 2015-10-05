{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.URLMaps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of UrlMap resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsList@.
module Network.Google.Resource.Compute.URLMaps.List
    (
    -- * REST Resource
      URLMapsListResource

    -- * Creating a Request
    , urlMapsList'
    , URLMapsList'

    -- * Request Lenses
    , umlQuotaUser
    , umlPrettyPrint
    , umlProject
    , umlUserIP
    , umlKey
    , umlFilter
    , umlPageToken
    , umlOAuthToken
    , umlMaxResults
    , umlFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsList@ which the
-- 'URLMapsList'' request conforms to.
type URLMapsListResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] URLMapList

-- | Retrieves the list of UrlMap resources available to the specified
-- project.
--
-- /See:/ 'urlMapsList'' smart constructor.
data URLMapsList' = URLMapsList'
    { _umlQuotaUser   :: !(Maybe Text)
    , _umlPrettyPrint :: !Bool
    , _umlProject     :: !Text
    , _umlUserIP      :: !(Maybe Text)
    , _umlKey         :: !(Maybe Key)
    , _umlFilter      :: !(Maybe Text)
    , _umlPageToken   :: !(Maybe Text)
    , _umlOAuthToken  :: !(Maybe OAuthToken)
    , _umlMaxResults  :: !Word32
    , _umlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlQuotaUser'
--
-- * 'umlPrettyPrint'
--
-- * 'umlProject'
--
-- * 'umlUserIP'
--
-- * 'umlKey'
--
-- * 'umlFilter'
--
-- * 'umlPageToken'
--
-- * 'umlOAuthToken'
--
-- * 'umlMaxResults'
--
-- * 'umlFields'
urlMapsList'
    :: Text -- ^ 'project'
    -> URLMapsList'
urlMapsList' pUmlProject_ =
    URLMapsList'
    { _umlQuotaUser = Nothing
    , _umlPrettyPrint = True
    , _umlProject = pUmlProject_
    , _umlUserIP = Nothing
    , _umlKey = Nothing
    , _umlFilter = Nothing
    , _umlPageToken = Nothing
    , _umlOAuthToken = Nothing
    , _umlMaxResults = 500
    , _umlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umlQuotaUser :: Lens' URLMapsList' (Maybe Text)
umlQuotaUser
  = lens _umlQuotaUser (\ s a -> s{_umlQuotaUser = a})

-- | Returns response with indentations and line breaks.
umlPrettyPrint :: Lens' URLMapsList' Bool
umlPrettyPrint
  = lens _umlPrettyPrint
      (\ s a -> s{_umlPrettyPrint = a})

-- | Name of the project scoping this request.
umlProject :: Lens' URLMapsList' Text
umlProject
  = lens _umlProject (\ s a -> s{_umlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umlUserIP :: Lens' URLMapsList' (Maybe Text)
umlUserIP
  = lens _umlUserIP (\ s a -> s{_umlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umlKey :: Lens' URLMapsList' (Maybe Key)
umlKey = lens _umlKey (\ s a -> s{_umlKey = a})

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
umlFilter :: Lens' URLMapsList' (Maybe Text)
umlFilter
  = lens _umlFilter (\ s a -> s{_umlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
umlPageToken :: Lens' URLMapsList' (Maybe Text)
umlPageToken
  = lens _umlPageToken (\ s a -> s{_umlPageToken = a})

-- | OAuth 2.0 token for the current user.
umlOAuthToken :: Lens' URLMapsList' (Maybe OAuthToken)
umlOAuthToken
  = lens _umlOAuthToken
      (\ s a -> s{_umlOAuthToken = a})

-- | Maximum count of results to be returned.
umlMaxResults :: Lens' URLMapsList' Word32
umlMaxResults
  = lens _umlMaxResults
      (\ s a -> s{_umlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
umlFields :: Lens' URLMapsList' (Maybe Text)
umlFields
  = lens _umlFields (\ s a -> s{_umlFields = a})

instance GoogleAuth URLMapsList' where
        authKey = umlKey . _Just
        authToken = umlOAuthToken . _Just

instance GoogleRequest URLMapsList' where
        type Rs URLMapsList' = URLMapList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsList'{..}
          = go _umlProject _umlFilter _umlPageToken
              (Just _umlMaxResults)
              _umlQuotaUser
              (Just _umlPrettyPrint)
              _umlUserIP
              _umlFields
              _umlKey
              _umlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy URLMapsListResource)
                      r
                      u
