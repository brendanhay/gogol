{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Compute.URLMaps.List
    (
    -- * REST Resource
      UrlMapsListAPI

    -- * Creating a Request
    , uRLMapsList
    , URLMapsList

    -- * Request Lenses
    , umlQuotaUser
    , umlPrettyPrint
    , umlProject
    , umlUserIp
    , umlKey
    , umlFilter
    , umlPageToken
    , umlOauthToken
    , umlMaxResults
    , umlFields
    , umlAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsList@ which the
-- 'URLMapsList' request conforms to.
type UrlMapsListAPI =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] URLMapList

-- | Retrieves the list of UrlMap resources available to the specified
-- project.
--
-- /See:/ 'uRLMapsList' smart constructor.
data URLMapsList = URLMapsList
    { _umlQuotaUser   :: !(Maybe Text)
    , _umlPrettyPrint :: !Bool
    , _umlProject     :: !Text
    , _umlUserIp      :: !(Maybe Text)
    , _umlKey         :: !(Maybe Text)
    , _umlFilter      :: !(Maybe Text)
    , _umlPageToken   :: !(Maybe Text)
    , _umlOauthToken  :: !(Maybe Text)
    , _umlMaxResults  :: !Word32
    , _umlFields      :: !(Maybe Text)
    , _umlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'umlUserIp'
--
-- * 'umlKey'
--
-- * 'umlFilter'
--
-- * 'umlPageToken'
--
-- * 'umlOauthToken'
--
-- * 'umlMaxResults'
--
-- * 'umlFields'
--
-- * 'umlAlt'
uRLMapsList
    :: Text -- ^ 'project'
    -> URLMapsList
uRLMapsList pUmlProject_ =
    URLMapsList
    { _umlQuotaUser = Nothing
    , _umlPrettyPrint = True
    , _umlProject = pUmlProject_
    , _umlUserIp = Nothing
    , _umlKey = Nothing
    , _umlFilter = Nothing
    , _umlPageToken = Nothing
    , _umlOauthToken = Nothing
    , _umlMaxResults = 500
    , _umlFields = Nothing
    , _umlAlt = "json"
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
umlUserIp :: Lens' URLMapsList' (Maybe Text)
umlUserIp
  = lens _umlUserIp (\ s a -> s{_umlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umlKey :: Lens' URLMapsList' (Maybe Text)
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
umlOauthToken :: Lens' URLMapsList' (Maybe Text)
umlOauthToken
  = lens _umlOauthToken
      (\ s a -> s{_umlOauthToken = a})

-- | Maximum count of results to be returned.
umlMaxResults :: Lens' URLMapsList' Word32
umlMaxResults
  = lens _umlMaxResults
      (\ s a -> s{_umlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
umlFields :: Lens' URLMapsList' (Maybe Text)
umlFields
  = lens _umlFields (\ s a -> s{_umlFields = a})

-- | Data format for the response.
umlAlt :: Lens' URLMapsList' Text
umlAlt = lens _umlAlt (\ s a -> s{_umlAlt = a})

instance GoogleRequest URLMapsList' where
        type Rs URLMapsList' = URLMapList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsList{..}
          = go _umlQuotaUser _umlPrettyPrint _umlProject
              _umlUserIp
              _umlKey
              _umlFilter
              _umlPageToken
              _umlOauthToken
              (Just _umlMaxResults)
              _umlFields
              _umlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UrlMapsListAPI) r u
